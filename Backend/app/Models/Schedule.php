<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    use HasFactory;

    protected $guarded = [];

    /**
     * Relasi ke tabel Room (Setiap jadwal dimiliki oleh satu ruangan)
     */
    public function room()
    {
        return $this->belongsTo(Room::class, 'room_id', 'id');
    }
}
