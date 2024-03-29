package org.googlemap.domain.util;

import org.googlemap.application.dto.CoordinateDto;
import org.googlemap.infra.model.Donut;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

/**
 * DTOとEntity間の変換を担当する
 */
@Component
public class DtoEntityConverter {
    /**
     * Donuts Entityのリストを座標情報リストに変換する
     * @param donuts
     * @return Donuts店の座標情報リスト
     */
    public List<CoordinateDto> convertDonutListToCoordinateList(List<Donut> donuts){

        List<CoordinateDto> coordinates = donuts.stream()
                .map(donut -> this.convertDonutToCoordinate(donut))
                .collect(Collectors.toList());

        return coordinates;
    }


    /**
     * Donuts Entityから地図に必要な情報を取得する
     * @param donut
     * @return Donuts店の座標情報
     */
    private CoordinateDto convertDonutToCoordinate(Donut donut){
        CoordinateDto coordinate = new CoordinateDto();

        coordinate.setPlaceName(donut.getShopName());
        coordinate.setLat(donut.getLat());
        coordinate.setLng(donut.getLng());
        coordinate.setPlaceType("donuts");

        return coordinate;
    }

}
