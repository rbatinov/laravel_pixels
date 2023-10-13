<?php

namespace Database\Seeders;

use App\Models\Comments;
use Illuminate\Database\Seeder;

class CommentsSeeder extends Seeder
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
            Comments::factory()->create();
        }
    }
}
