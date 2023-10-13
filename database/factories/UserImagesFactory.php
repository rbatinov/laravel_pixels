<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class UserImagesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(),
            'img_url' => $this->faker->imageUrl(640, 480, null, true, 'pixels', false, 'png'),
            'alt' => '',
            'user_id' => mt_rand(1,10)
        ];
    }
}
