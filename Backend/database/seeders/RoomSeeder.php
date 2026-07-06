<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Room; 
class RoomSeeder extends Seeder
{
    public function run(): void
    {
        // Generate 20 Ruangan Lantai 1 (Ruang 101 - 120)
        for ($i = 1; $i <= 20; $i++) {
            Room::create([
                'room_name' => 'Ruang 1' . str_pad($i, 2, '0', STR_PAD_LEFT),
                'floor' => 1,
                'capacity' => 40,
                'status' => 'available',
            ]);
        }

        // Generate 20 Ruangan Lantai 2 (Ruang 201 - 220)
        for ($i = 1; $i <= 20; $i++) {
            Room::create([
                'room_name' => 'Ruang 2' . str_pad($i, 2, '0', STR_PAD_LEFT),
                'floor' => 2,
                'capacity' => 40,
                'status' => 'available',
            ]);
        }
    }
}
