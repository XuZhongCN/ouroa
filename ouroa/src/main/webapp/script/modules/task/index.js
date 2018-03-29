/**
 * 用户管理
 */
var vm = new Vue({
    el: '#oa',
    data: {},
    methods: {
        loadTable: function () {
            var columns = [
                {title: '任务ID', field: 'id'},
                {title: '任务名称', field: 'name'},
                {title: '任务办理人', field: 'assignee'},
                //, index: "create_time"
                {
                    title: '创建时间', field: 'createTime',
                    formatter: function (value) {
                        return moment(value).format('YYYY年MM月DD日 hh:mm:ss');
                    }
                },
                {
                    title: '操作', field: 'id',
                    formatter: function (value, row, index) {
                        var edit = '<a href="view.action?id=' + value + '" class="btn btn-success btn-xs">查看</a>';
                        return edit;
                    }
                }
            ];
            var option = T.btTableOption;
            var allColumns = option.columns.concat(columns);//合并列
            option.columns = allColumns;
            option.url = '/task/list.action';
            $('#table').bootstrapTable(option);
        },
        deleteBatch: function () {
            T.deleteMoreItem('id');
        }
    }
});

vm.loadTable();