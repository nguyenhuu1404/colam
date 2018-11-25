<?php

namespace App\FormFields;

use \TCG\Voyager\FormFields\AbstractHandler;

class SelectparentFormField extends AbstractHandler{
    protected $codename = 'selectparent';

    public function createContent($row, $dataType, $dataTypeContent, $options)
    {
        return view('formfields.selectparent', [
            'row' => $row,
            'options' => $options,
            'dataType' => $dataType,
            'dataTypeContent' => $dataTypeContent
        ]);
    }
}
