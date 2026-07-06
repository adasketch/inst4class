<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Schedule;

class ScheduleSeeder extends Seeder
{
    public function run(): void
    {
        $schedules = [
            // Jadwal di Ruang 101 (Lantai 1, room_id = 1)
            ['room_id' => 1, 'course_name' => 'Sistem Operasi Xinu', 'class_code' => 'TI-23-01', 'start_time' => '08:30:00', 'end_time' => '11:30:00', 'day_of_week' => 'Monday'],
            ['room_id' => 1, 'course_name' => 'Pengantar Pemrograman', 'class_code' => 'IF-25-02', 'start_time' => '13:30:00', 'end_time' => '16:30:00', 'day_of_week' => 'Monday'],

            // Jadwal di Ruang 102 (Lantai 1, room_id = 2)
            ['room_id' => 2, 'course_name' => 'Pemodelan Basis Data', 'class_code' => 'RPL-24-03', 'start_time' => '09:30:00', 'end_time' => '12:30:00', 'day_of_week' => 'Monday'],
            ['room_id' => 2, 'course_name' => 'Keamanan Siber', 'class_code' => 'TI-23-02', 'start_time' => '14:00:00', 'end_time' => '17:00:00', 'day_of_week' => 'Monday'],

            // Jadwal di Ruang 201 (Lantai 2, room_id = 21)
            ['room_id' => 21, 'course_name' => 'Sistem Tertanam', 'class_code' => 'TE-23-01', 'start_time' => '10:30:00', 'end_time' => '13:30:00', 'day_of_week' => 'Monday'],
            ['room_id' => 21, 'course_name' => 'Kalkulus Lanjut', 'class_code' => 'TI-25-03', 'start_time' => '14:30:00', 'end_time' => '17:30:00', 'day_of_week' => 'Monday'],
        ];

        foreach ($schedules as $schedule) {
            Schedule::create($schedule);
        }
    }
}
