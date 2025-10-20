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
            if (!Schema::hasColumn('results', 'certificateno')) {
                $table->integer('certificateno')->after('slno');
            }
        });
        $results = DB::table('results')->orderBy('id')->get();
        $certificateno = 1001;
        foreach ($results as $result) {
            DB::table('results')
                ->where('id', $result->id)
                ->update(['certificateno' => $certificateno]);
            $certificateno++;
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
