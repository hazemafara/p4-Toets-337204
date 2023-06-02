<?php

class ExamenModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getExamens()
    {
        $sql = "SELECT
            CONCAT_WS(' ', Voornaam, NULLIF(Tussenvoegsel, ''), Achternaam) AS Naam, Datum, Rijbewijscategorie, Rijschool, Stad, Uitslag
        FROM ExamenPerExaminator
        JOIN Examen ON Examen.Id = ExamenPerExaminator.ExamenId
        JOIN Examinator ON Examinator.Id = ExamenPerExaminator.ExaminatorId
        LEFT JOIN (
            SELECT
                ExaminatorId, COUNT(*) AS ExamCount
            FROM ExamenPerExaminator
            JOIN Examen ON Examen.Id = ExamenPerExaminator.ExamenId
            WHERE Uitslag = 1
            GROUP BY ExaminatorId
        ) AS ExamCountTable ON ExamCountTable.ExaminatorId = Examinator.Id
        ORDER BY ExamCountTable.ExamCount DESC";

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}
