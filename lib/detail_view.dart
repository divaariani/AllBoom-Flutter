import 'package:flutter/material.dart';
import 'album.dart';

class DetailAlbum extends StatefulWidget {
  final Album album;
  const DetailAlbum({Key? key, required this.album}) : super(key: key);

  @override
  State<DetailAlbum> createState() {
    return _DetailAlbumState();
  }
}

class _DetailAlbumState extends State<DetailAlbum> {
  int _slider = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Album'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                widget.album.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Artist: ${widget.album.artist}',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image(
                  image: AssetImage(widget.album.image),
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 10),
              Slider(
                min: 1,
                max: 10,
                divisions: 9,
                label: '${_slider * widget.album.pack} pack',
                value: _slider.toDouble(),
                onChanged: (newValue) {
                  setState(() {
                    _slider = newValue.round();
                  });
                },
                activeColor: Colors.pink,
                inactiveColor: Colors.black,
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true, // Allows the ListView to wrap its content
                padding: const EdgeInsets.all(10),
                itemCount: widget.album.materials.length,
                itemBuilder: (BuildContext context, int index) {
                  final materials = widget.album.materials[index];

                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '${materials.quantity * _slider}${materials.measure}',
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}