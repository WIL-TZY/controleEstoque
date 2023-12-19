import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).appBar,
          automaticallyImplyLeading: false,
          title: Text(
            'Dashboard',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/overlay.png',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Ações',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 30.0,
                              color: Color(0x8076541A),
                              offset: Offset(0.0, 2.0),
                              spreadRadius: 0.0,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('cadastroProduto');
                            },
                            text: 'Adicionar',
                            icon: const Icon(
                              Icons.add_shopping_cart,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 0.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFFFBC01),
                              textStyle:
                                  FlutterFlowTheme.of(context).titleSmall,
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                              hoverColor: const Color(0xFF76541A),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 12.0,
                              color: Color(0x67262D34),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('visualizarTabela');
                            },
                            text: 'Visualizar',
                            icon: const Icon(
                              Icons.visibility_outlined,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 0.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF1D2428),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                              hoverColor: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Geral',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 0.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 3.7,
                          ),
                          scrollDirection: Axis.vertical,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CircularPercentIndicator(
                                        percent: 0.7,
                                        radius: 47.5,
                                        lineWidth: 12.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .accent4,
                                        center: Text(
                                          '70%',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Colors.white,
                                              ),
                                        ),
                                      ),
                                    ),
                                    AutoSizeText(
                                      'Estoque',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CircularPercentIndicator(
                                        percent: 0.5,
                                        radius: 47.0,
                                        lineWidth: 12.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: const Color(0xFFFFBD00),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .accent4,
                                        center: Text(
                                          '50',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Colors.white,
                                              ),
                                        ),
                                      ),
                                    ),
                                    AutoSizeText(
                                      'Total Ativos',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CircularPercentIndicator(
                                        percent: 0.2,
                                        radius: 47.0,
                                        lineWidth: 12.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context).error,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .accent4,
                                        center: Text(
                                          '20',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Colors.white,
                                              ),
                                        ),
                                      ),
                                    ),
                                    AutoSizeText(
                                      'Meta Mensal',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Atividade',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  decoration: const BoxDecoration(
                    color: Color(0x8014181B),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: StreamBuilder<List<ProdutosRecord>>(
                      stream: queryProdutosRecord(
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<ProdutosRecord> chartProdutosRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final chartProdutosRecord =
                            chartProdutosRecordList.isNotEmpty
                                ? chartProdutosRecordList.first
                                : null;
                        return SizedBox(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 164.0,
                          child: FlutterFlowLineChart(
                            data: [
                              FFLineChartData(
                                xData: List.generate(
                                    random_data.randomInteger(0, 0),
                                    (index) =>
                                        random_data.randomInteger(0, 10)),
                                yData: List.generate(
                                    random_data.randomInteger(0, 0),
                                    (index) => random_data.randomDate()),
                                settings: LineChartBarData(
                                  color: FlutterFlowTheme.of(context).primary,
                                  barWidth: 2.0,
                                  isCurved: true,
                                  dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(
                                    show: true,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              )
                            ],
                            chartStylingInfo: ChartStylingInfo(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              showGrid: true,
                              showBorder: false,
                            ),
                            axisBounds: const AxisBounds(),
                            xAxisLabelInfo: const AxisLabelInfo(
                              title: 'Meses',
                              titleTextStyle: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            yAxisLabelInfo: const AxisLabelInfo(
                              title: 'Vendas',
                              titleTextStyle: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
