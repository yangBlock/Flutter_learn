import 'package:flutter/material.dart';
import '../model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _post = posts;

  int _selectedCount = 0;
  @override
  // TODO: implement rowCount
  int get rowCount => _post.length;

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;

  @override
  DataRow getRow(int index) {
    // TODO: implement getRow
    final Post post = _post[index];
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(Text(post.title)),
        DataCell(Text(post.author)),
        DataCell(Image.network(post.imageUrl)),
      ],
    );
  }
}
class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  final PostDataSource _postDataSource = PostDataSource();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginatedDataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Text('Posts'),
              rowsPerPage: 5,
              source: _postDataSource,
              sortColumnIndex: _sortColumnIndex,//排序栏的索引号
              sortAscending: _sortAscending,//默认升序排列，false标识降序排列
              onSelectAll: (bool value) {//是否全选

              },
              columns:[
                DataColumn(
                  label: Text('Title'),
                  onSort: (int index, bool ascending) {
                    setState(() {
                      _sortColumnIndex = index;
                      _sortAscending = ascending;
                      posts.sort((a,b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a.title.length.compareTo(b.title.length);//按照字符的长度，升序或者降序排列
                      });
                    });
                  },
                ),
                DataColumn(
                    label: Text('Author')
                ),
                DataColumn(
                    label: Text('Image')
                ),
              ] ,
            ),
          ],
        ),
      ),
    );
  }
}
