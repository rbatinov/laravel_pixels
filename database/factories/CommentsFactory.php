<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CommentsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_image_id' => mt_rand(1,101),
            'dsc' => $this->faker->text(),
            'user_id' => mt_rand(1,103)
        ];
    }
}
