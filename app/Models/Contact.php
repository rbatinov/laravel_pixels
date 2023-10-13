<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    // this is used when you have another table name in the migration
    // the default behavior is if we have Contact class => it searches for contactS table - or in other words it gets its plural form
    protected $table = 'contact_messages';

    protected $fillable = [
        'user_id',
        'dsc',
        'name',
        'email'
    ];
}
