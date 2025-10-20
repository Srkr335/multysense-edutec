<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::table('results', function (Blueprint $table) {
            if (!Schema::hasColumn('results', 'slno')) {
                $table->integer('slno')->after('id');
            }
        });
        $results = DB::table('results')->orderBy('id')->get();
        $slno = 2001;
        foreach ($results as $result) {
            DB::table('results')
                ->where('id', $result->id)
                ->update(['slno' => $slno]);
            $slno++;
        }
    }



    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('results', function (Blueprint $table) {
            //
        });
    }
};
