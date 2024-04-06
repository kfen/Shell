install_gun(){
    cd ${CUR_DIR}
    pushd ${TEMP_DIR_PATH} > /dev/null 2>&1
    chmod +x ${gun_file}
    mv ${gun_file} ${GUN_BIN_PATH}
    if [ $? -eq 0 ]; then
        [ -f ${GUN_BIN_PATH} ] && ln -fs ${GUN_BIN_PATH} /usr/bin
        _echo -i "gun安装成功."
    else
        _echo -e "gun安装失败."
        install_cleanup
        exit 1
    fi
    popd > /dev/null 2>&1
}