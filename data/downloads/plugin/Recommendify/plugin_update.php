<?php
class plugin_update
{
    /**
     *
     * アップデート
     * updateはアップデート時に実行されます。
     * 引数にはdtb_pluginのプラグイン情報が渡されます。
     * @param $arrPlugin
     */
    public function update($arrPlugin)
    {
        $objQuery =& SC_Query_Ex::getSingletonInstance();
        // 初期データ追加
        $sqlval_plugin = array();
        $sqlval_plugin['plugin_version'] = "2.1";
        $sqlval_plugin['update_date'] = 'CURRENT_TIMESTAMP';
        $where = "plugin_code = ?";
        // UPDATEの実行
        $objQuery->update('dtb_plugin', $sqlval_plugin, $where, array('Recommendify'));
        // ファイルのコピー
        if(copy_r(DOWNLOADS_TEMP_PLUGIN_UPDATE_DIR, PLUGIN_UPLOAD_REALDIR . "Recommendify/") === false) die ("失敗");
    }
}

function copy_r( $path, $dest )
{
    define('DS', DIRECTORY_SEPARATOR);
    if ( is_dir($path) ) {
        @mkdir( $dest );
        $objects = scandir($path);
        if ( sizeof($objects) > 0 ) {
            foreach ($objects as $file) {
                if( $file == "." || $file == ".." )
                    continue;
                // go on
                if ( is_dir( $path.DS.$file ) ) {
                    copy_r( $path.DS.$file, $dest.DS.$file );
                } else {
                    copy( $path.DS.$file, $dest.DS.$file );
                }
            }
        }

        return true;
    } elseif ( is_file($path) ) {
        return copy($path, $dest);
    } else {
        return false;
    }
}
