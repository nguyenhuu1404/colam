function tinymce_init_callback(editor)
{
    
    // editor.settings.forced_root_block = "";
    // editor.settings.force_br_newlines  = false;
    // editor.settings.force_p_newlines  = false;
    // editor.settings.relative_url = false;
    // editor.settings.remove_script_host = false;
    editor.remove();
   
    tinymce.init({
        menubar: false,
        theme : "advanced",
        selector:'textarea.richTextBox',
        skin: 'voyager',
        forced_root_block : '',
        force_br_newlines : true,
        force_p_newlines : false,
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
        init_instance_callback: function (editor) {
            if (typeof tinymce_init_callback !== "undefined") {
                tinymce_init_callback(editor);
            }
        }
      });    
    //console.log(editor);
}