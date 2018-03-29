/**
 * 菜单管理-列表
 */
var vm = new Vue({
    
    el: '#oa',
    data: {},
    methods: {
        loadTable: function () {
            var columns = [
                {field: 'menuId', title: '菜单ID'},
                {field: 'menuName', title: '菜单名称'},
                {field: 'url', title: '菜单URL'},
                {field: 'perms', title: '授权标识'},
                {
                    field: 'type', title: '类型',
                    formatter: function (value) {
                        switch (value) {
                            case 0:
                                return '<span class="label label-primary">目录</span>';
                                break;
                            case 1:
                                return '<span class="label label-success">菜单</span>';
                                break;
                            case 2:
                                return '<span class="label label-warning">按钮</span>';
                                break;
                        }
                    }
                },
                {
                    field: 'menuId', title: '操作',
                    formatter: function (value, row, index) {
                        var edit = '<a href="form.action?edit&menuId=' + value + '" class="btn btn-info btn-xs">编辑</a>';
                        return edit;
                    }
                }
            ];
            var option = T.btTableOption;
            option.columns = option.columns.concat(columns);
            option.url = 'findAllMenu.action';
            $('#table').bootstrapTable(option);
        },
        deleteBatch: function () {
            T.deleteMoreItem('menuId');
        }
    }
});

$(function () {
    vm.loadTable();
});

