<?php
//57514, f51b597d7446d94fecf5557df7ba8ffa, lamdaothanh305@gmail.com
return [
    /*
     * Link api duyệt thanh toán
     *
     *
     * */
    'url_api' => env('URL_API', 'https://www.nganluong.vn/checkout.api.nganluong.post.php'),

    /*
     * Mã kết nối
     *
     *
     * */
    'merchant_id' => env('MERCHANT_ID', '57514'),

    /*
     * Mật khẩu kết nối
     *
     *
     * */
    'merchant_password' => env('MERCHANT_PASSWORD', 'f51b597d7446d94fecf5557df7ba8ffa'),

    /*
     * Email tài khoản Ngân Lượng
     *
     *
     * */
    'receiver_email' => env('RECEIVER_EMAIL', 'lamdaothanh305@gmail.com')
];
