/*
 * Copyright 2020 Pedro Massango. All rights reserved.
 * Created by Pedro Massango on 3/7/2020.
 */

import 'package:app/src/domain/core/project.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class ProjectContentView extends StatefulWidget {
  final Project project;

  const ProjectContentView({this.project}) :
        assert(project != null, 'project must not be null in project content view.');

  @override
  _ProjectContentViewState createState() => _ProjectContentViewState();
}

class _ProjectContentViewState extends State<ProjectContentView>
  with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _ProjectToolBar(
        projectName: widget.project.name,
        preferredSize: Size(context.mediaQuerySize.width, 130),
      ),
    );
  }
}

class _ProjectToolBar extends StatefulWidget implements PreferredSizeWidget {

  final String projectName;

  @override
  final Size preferredSize;

  const _ProjectToolBar({this.preferredSize, this.projectName});

  @override
  _ProjectToolBarState createState() => _ProjectToolBarState();
}

class _ProjectToolBarState extends State<_ProjectToolBar>
  with TickerProviderStateMixin {

  final _tabs = ['Overview', 'Messages'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.preferredSize.height,
      width: widget.preferredSize.width,
      margin: EdgeInsets.only(top: 28, left: 32, right: 32),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.projectName,
            style: context.textTheme.headline6.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 70,
                width: widget.preferredSize.width * .3,
                child: TabBar(
                  labelColor: context.primaryColor,
                  unselectedLabelColor: context.primaryColor,
                  controller: TabController(length: _tabs.length, vsync: this),
                  tabs: _tabs.map((title) {
                    return Tab(
                      text: title,
                    );
                  }).toList(),
                ),
              ),
              _Buttons(),
            ],
          ),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox.fromSize(
          size: Size(130, 40),
          child: RaisedButton(
            color: context.primaryColor,
            splashColor: Colors.white12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4)
            ),
            child: Text('New Language', style: TextStyle(color: Colors.white)),
            onPressed: () {},
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 8)),
        SizedBox(
          height: 40,
          child: RaisedButton(
            color: context.primaryColor,
            splashColor: Colors.white12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4)
            ),
            child: Text('Import Language File', style: TextStyle(color: Colors.white)),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
