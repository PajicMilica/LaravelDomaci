<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class profesorPredmet extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function predmet()
    {
        return $this->belongsTo(Predmet::class);
    }
    public function profesor()
    {
        return $this->belongsTo(Profesor::class);
    }


    /*public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }*/
}
