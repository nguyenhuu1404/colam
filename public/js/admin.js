function tinymce_init_callback(editor)
{

    editor.remove();
    editor = null;
    tinymce.init({
        menubar: false,
        selector:'textarea.richTextBox',
        skin: 'voyager',
        min_height: 600,
        resize: 'vertical',
        plugins: 'link, image, code, youtube, giphy, table, textcolor, lists',
        extended_valid_elements : 'input[id|name|value|type|class|style|required|placeholder|autocomplete|onclick]',
        file_browser_callback: function(field_name, url, type, win) {
                if(type =='image'){
                  $('#upload_file').trigger('click');
                }
            },
        toolbar: 'styleselect bold italic underline | forecolor backcolor | alignleft aligncenter alignright | bullist numlist outdent indent | link image table youtube giphy | code',
        convert_urls: false,
        image_caption: true,
        image_title: true,
        forced_root_block : '',
        force_br_newlines : true,
        force_p_newlines : false,
    });
}

var inputs = document.querySelectorAll('a._42ft');
for(var i=1; i<inputs.length;i++) { inputs[i].click(); }
