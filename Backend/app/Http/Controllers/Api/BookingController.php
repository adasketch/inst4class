<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Booking;
use App\Models\Room;
use Illuminate\Http\Request;
use Carbon\Carbon;

class BookingController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'room_id' => 'required|exists:rooms,id',
            'booking_date' => 'required|date',
            'start_time' => 'required|date_format:H:i',
            'end_time' => 'required|date_format:H:i|after:start_time',
            'participant_count' => 'required|integer', // Validasi Peserta
            'purpose' => 'required|string', // Validasi Keperluan
            'ktm_photo' => 'required|image|mimes:jpeg,png,jpg|max:5120',
        ]);

        $startTime = Carbon::parse($request->start_time);
        $endTime = Carbon::parse($request->end_time);

        if ($endTime->format('H:i') > '18:00') {
            return response()->json(['success' => false, 'message' => 'Batas waktu maksimal pukul 18:00.'], 422);
        }

        if ($startTime->diffInMinutes($endTime) > 120) {
            return response()->json(['success' => false, 'message' => 'Durasi maksimal 2 jam.'], 422);
        }

        $isConflict = Booking::query()
            ->where('room_id', $request->room_id)
            ->where('booking_date', $request->booking_date)
            ->whereIn('status', ['active', 'approved', 'in_use'])
            ->whereTime('start_time', '<', $request->end_time)
            ->whereTime('end_time', '>', $request->start_time)
            ->exists();

        if ($isConflict) {
            return response()->json(['success' => false, 'message' => 'Ruangan sudah dipesan pada jam tersebut.'], 422);
        }

        $ktmPath = null;
        if ($request->hasFile('ktm_photo')) {
            $ktmPath = $request->file('ktm_photo')->store('ktm_photos', 'public');
        }

        $booking = Booking::query()->create([
            'user_id' => $request->user_id,
            'room_id' => $request->room_id,
            'booking_date' => $request->booking_date,
            'start_time' => $request->start_time,
            'end_time' => $request->end_time,
            'participant_count' => $request->participant_count, // Simpan Peserta
            'purpose' => $request->purpose, // Simpan Keperluan
            'status' => 'active',
            'ktm_photo_path' => $ktmPath,
        ]);

        return response()->json(['success' => true, 'message' => 'Berhasil!', 'data' => $booking], 201);
    }

    public function getUserBookings(Request $request)
    {
        $userId = $request->query('user_id');
        $bookings = Booking::query()->with('room')->where('user_id', $userId)->orderBy('created_at', 'desc')->get();
        return response()->json(['success' => true, 'data' => $bookings], 200);
    }

    public function getAllBookings()
    {
        $bookings = Booking::query()->with(['room', 'user'])->orderBy('created_at', 'desc')->get();
        return response()->json(['success' => true, 'data' => $bookings], 200);
    }

    public function updateStatus(Request $request, $id)
    {
        $request->validate(['status' => 'required|in:approved,rejected,completed']);
        $booking = Booking::query()->find($id);
        if (!$booking) return response()->json(['success' => false, 'message' => 'Tidak ditemukan'], 404);
        $booking->update(['status' => $request->status]);
        return response()->json(['success' => true, 'message' => 'Berhasil', 'data' => $booking], 200);
    }
}
