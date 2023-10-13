<?php

namespace Database\Seeders;

use App\Models\UserImages;
use Illuminate\Database\Seeder;

class UserImagesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $max = 100;
        for($i=0; $i<=$max; $i++){
            UserImages::factory()->create();
        }
    }
}
