import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/core/widgets/loading_widget.dart';
import 'package:fs_bank/features/locations/presentation/blocs/bloc/location_bloc.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/app/depndency_injection.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => instance<LocationBloc>()
        ..add(const LocationEvent.getMyLocation())
        ..add(const LocationEvent.getBranchesLocation()),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<LocationBloc, LocationState>(
          builder: (context, state) {
            if (state.isLoadingMyLocation) {
              return const Center(child: LoadingWidget());
            }
            return Stack(
              children: [
                FlutterMap(
                  options: MapOptions(
                    initialCenter: LatLng(
                        state.myLocation?.latitude ?? 0,
                        state.myLocation?.longitude ??
                            0), // Center the map over London
                    initialZoom: 18,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                      // "https://api.mapbox.com/styles/v1/alieid/cm7hewdaw002l01sb36lo2dmi/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYWxpZWlkIiwiYSI6ImNtN2hrZTBvbjE4aWsya3I1bWdkOTVsZXAifQ.VlxHaSSH-ifRHA3JbLp7kA", // urlTemplate:
                      userAgentPackageName: 'com.example.customer_bank',
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          width: AppSizeW.s40,
                          height: AppSizeH.s40,
                          point: LatLng(state.myLocation?.latitude ?? 0,
                              state.myLocation?.longitude ?? 0),
                          child: Icon(Icons.location_pin,
                              color: ColorManager.persimmon,
                              size: AppSizeSp.s40),
                        ),
                        ...context.read<LocationBloc>().markers
                      ],
                    ),
                  ],
                ),
                if (state.isLoadingBranches || state.isLoadingLocations)
                  const Center(child: LoadingWidget())
              ],
            );
          },
        ),
      ),
    );
  }
}
