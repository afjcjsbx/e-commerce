package com.afjcjsbx.eshop.controller.shipment;

import com.afjcjsbx.eshop.entity.shipment.Shipment;
import com.afjcjsbx.eshop.enums.shipment.DeliveryStatus;
import com.afjcjsbx.eshop.persistence.DataSource;
import com.afjcjsbx.eshop.persistence.Query;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * Created by Richard on 07/02/2017.
 */
public class ShipmentController {

    private static DeliveryStatus retrieveShipmentStatus(ResultSet resultSet) throws SQLException, ParseException {
        DeliveryStatus ds = null;
        String s_tracking = resultSet.getString("ShipmentTrack"),
                s_data = resultSet.getString("ShipmentDate"),
                s_status = resultSet.getString("ShipmentStatus");

        System.out.println(s_status);

        if (s_status.equals("NOT_FOUND")){
            System.out.println(ds);
        } else if (s_status.equals("NOTSENT")){
            ds = DeliveryStatus.NOTSENT;
            System.out.println(ds);
        } else if (s_status.equals("SENT")){
            ds = DeliveryStatus.SENT;
            System.out.println(ds);
        } else if (s_status.equals("DELIVERED")){
            ds = DeliveryStatus.DELIVERED;
            System.out.println(ds);
        }

        /*SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date_f = (Date) formatter.parse(s_data);

        System.out.println(date_f);

        Shipment shipment = new Shipment();

        shipment.setTrackingNumber(s_tracking);
        shipment.setDate(date_f);
        shipment.setDeliveryStatus(ds);


        return shipment.getDeliveryStatus();
        */
        return ds;
    }

    public static DeliveryStatus shipment(String tracking, String date) throws SQLException, ParseException {
        System.out.println(tracking);
        System.out.println(date);

        PreparedStatement preparedStatement = DataSource.getConnection().prepareStatement(Query.FIND_SHIPMENT_STATUS);
        preparedStatement.setString(1, tracking);
        preparedStatement.setString(2, date);

        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            return retrieveShipmentStatus(resultSet);
        }

        return DeliveryStatus.NOT_FOUND;
    }
}
