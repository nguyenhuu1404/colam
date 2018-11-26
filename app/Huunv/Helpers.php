<?php
if(!function_exists('getYoutubeId')){
    function getYoutubeId($link){
        $youtubeId = substr($link, strrpos($link, '=') + 1);
        return $youtubeId;
    }
}

if(!function_exists('priceFormat')){
    function priceFormat($price){
        return number_format($price, 0, ',', '.');
    }
}

