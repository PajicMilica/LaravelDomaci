<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToProfesorTable extends Migration
{
    
 
    public function up()
    {
        Schema::table('profesors', function (Blueprint $table) {
            $table -> string('gender');
        });
    }

    public function down()
    {
        Schema::table('profesors', function (Blueprint $table) {
            $table ->dropIfExists('gender');
        });
    }
    
}
