<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Room;
use Illuminate\Http\Request;

class RoomController extends Controller
{
    public function index(Request $request)
    {
        // Menangkap parameter lantai jika dikirim oleh Flutter (misal: /api/rooms?floor=1)
        $floor = $request->query('floor');

        $query = Room::with('schedules'); // Ambil ruangan beserta jadwalnya

        // Flutter meminta lantai tertentu, filter datanya
        if ($floor) {
            $query->where('floor', $floor);
        }

        $rooms = $query->get();

        // Kembalikan data dalam bentuk JSON
        return response()->json([
            'success' => true,
            'message' => 'Daftar Ruangan berhasil diambil',
            'data'    => $rooms
        ], 200);
    }
}
