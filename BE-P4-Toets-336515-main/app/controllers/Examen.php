<?php

class Examen extends BaseController
{
    private $examenModel;

    public function __construct()
    {
        $this->examenModel = $this->model('ExamenModel');
    }

    public function index()
    {
        $examens  = $this->examenModel->getExamens();

        $data = [
            'title' => 'Overzicht Afgenomen Examens Examinatoren',
            'examens' => $examens,
        ];

        $this->view('Examen/index', $data);
    }
}
