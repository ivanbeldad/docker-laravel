<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class Server extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'server {--host=0.0.0.0} {--port=8000}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'New server';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        \Artisan::call('serve', [
            "--host" => $this->option('host'),
            '--port' => $this->option('port'),
        ]);
    }
}
