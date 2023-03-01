import 'package:analyzer_studio/app_theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:provider/provider.dart';

class AnalyzerStudioApp extends StatelessWidget {
  const AnalyzerStudioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppTheme(),
      builder: (context, _) {
        final theme = context.watch<AppTheme>();

        return FluentApp(
          title: "Analyzer Studio",
          themeMode: theme.mode,
          debugShowCheckedModeBanner: false,
          color: theme.color,
          darkTheme: FluentThemeData(
            brightness: Brightness.dark,
            accentColor: theme.color,
            visualDensity: VisualDensity.standard,
            focusTheme: FocusThemeData(
              glowFactor: is10footScreen() ? 2.0 : 0.0,
            ),
          ),
          theme: FluentThemeData(
            accentColor: theme.color,
            visualDensity: VisualDensity.standard,
            focusTheme: FocusThemeData(
              glowFactor: is10footScreen() ? 2.0 : 0.0,
            ),
          ),
          home: ScaffoldPage(
            content: LayoutGrid(
              columnSizes: [1.fr, 1.fr],
              rowSizes: [1.fr, 1.fr],
              columnGap: 12,
              rowGap: 12,
              areas: '''
                properties analysis
                specimens  specimens
              ''',
              children: [
                Column(
                  children: [
                    const Text("Properties"),
                    DataTable(
                      columns: const [
                        DataColumn(
                          label: Text("Name"),
                        )
                      ],
                      rows: const [
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Test"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ).inGridArea("properties"),
                Column(
                  children: [
                    const Text("Analysis"),
                    DataTable(
                      columns: const [
                        DataColumn(
                          label: Text("Name"),
                        )
                      ],
                      rows: const [
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Test"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ).inGridArea("analysis"),
                Column(
                  children: [
                    const Text("Specimens"),
                    DataTable(
                      columns: const [
                        DataColumn(
                          label: Text("Name"),
                        )
                      ],
                      rows: const [
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Test"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ).inGridArea("specimens"),
              ],
            ),
            // content: Column(
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            //   children: [
            //     Expanded(
            //       child: Row(
            //         children: [
            //           Expanded(
            //             child: Column(
            //               children: [
            //                 const Text("Properties"),
            //                 DataTable(
            //                   columns: const [
            //                     DataColumn(
            //                       label: Text("Name"),
            //                     )
            //                   ],
            //                   rows: const [
            //                     DataRow(
            //                       cells: [
            //                         DataCell(
            //                           Text("Test"),
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Expanded(
            //             child: Column(
            //               children: [
            //                 const Text("Analysis"),
            //                 DataTable(
            //                   columns: const [
            //                     DataColumn(
            //                       label: Text("Rank"),
            //                     ),
            //                   ],
            //                   rows: const [
            //                     DataRow(
            //                       cells: [
            //                         DataCell(
            //                           Text("1."),
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           const Text("Specimens"),
            //           DataTable(
            //             columns: const [
            //               DataColumn(
            //                 label: Text("Name"),
            //               ),
            //             ],
            //             rows: const [
            //               DataRow(
            //                 cells: [
            //                   DataCell(
            //                     Text("Test2"),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ),
        );
      },
    );
  }
}
