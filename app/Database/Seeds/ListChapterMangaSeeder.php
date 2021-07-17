<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

use CodeIgniter\I18n\Time;

class ListChapterMangaSeeder extends Seeder
{
    public function run()
    {
        $data = [];
        $count = 0;
        // untuk data silakan import sqlnya dulu, lalu jalankan looping dibawah ini satu per satu
        for ($i = 1; $i <= 132; $i++) {
            if ($i <= 45 or $i >= 50 and $i <= 98 or $i >= 100 and $i <= 115 or $i >= 117 and $i <= 120 or $i === 122 or $i === 123 or $i === 132) {
                array_push($data, [
                    "slug"  => "ao-no-exorcist",
                    "chapter" => "chapter-$i",
                    "created_at" => Time::now(),
                    "updated_at" => Time::now()
                ]);
            } elseif ($i === 46) {
                array_push($data, [
                    "slug"  => "ao-no-exorcist",
                    "chapter" => "chapter-$i",
                    "created_at" => Time::now(),
                    "updated_at" => Time::now()
                ]);
                array_push($data, [
                    "slug"  => "ao-no-exorcist",
                    "chapter" => "chapter-$i.5",
                    "created_at" => Time::now(),
                    "updated_at" => Time::now()
                ]);
                array_push($data, [
                    "slug"  => "ao-no-exorcist",
                    "chapter" => "chapter-$i.6",
                    "created_at" => Time::now(),
                    "updated_at" => Time::now()
                ]);
            } elseif ($i >= 47 and $i <= 49 or $i === 121 or $i >= 124 and $i <= 127 or $i >= 129 and $i <= 131) {
                array_push($data, [
                    "slug"  => "ao-no-exorcist",
                    "chapter" => "chapter-$i.1",
                    "created_at" => Time::now(),
                    "updated_at" => Time::now()
                ]);
                array_push($data, [
                    "slug"  => "ao-no-exorcist",
                    "chapter" => "chapter-$i.2",
                    "created_at" => Time::now(),
                    "updated_at" => Time::now()
                ]);
            } elseif ($i === 99 or $i === 116 or $i === 128) {
                array_push($data, [
                    "slug"  => "ao-no-exorcist",
                    "chapter" => "chapter-$i",
                    "created_at" => Time::now(),
                    "updated_at" => Time::now()
                ]);
                array_push($data, [
                    "slug"  => "ao-no-exorcist",
                    "chapter" => "chapter-$i.2",
                    "created_at" => Time::now(),
                    "updated_at" => Time::now()
                ]);
            }
        }
        $this->db->table("listchaptermanga")->insertBatch($data);
    }
}
