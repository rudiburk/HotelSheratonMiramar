package cl.praxis.webappreservas.business;

import cl.praxis.webappreservas.model.Room;

import java.util.ArrayList;
import java.util.List;

public class RoomBusiness {
    public List<Room> getRoom() {
        ArrayList<Room> rooms = new ArrayList<>();

        Room room1 =  new Room();
        room1.setId(1);
        room1.setName("Habitación 1, Simple");
        room1.setDescription("Habitación Clásica con cama extragrande, vistas al océano y balcón.");
        room1.setImage("https://cf.bstatic.com/xdata/images/hotel/max1024x768/461652315.jpg?k=f51a6b496658d7625896c48445c617885c8580f67c1625d52434253413a15423&o=&hp=1");
        room1.setPrice(10000);
        room1.setRooms(1);
        room1.setMt(80);

        Room room2 = new Room();
        room2.setId(2);
        room2.setName("Habitación 2, Doble-Simple");
        room2.setDescription("Habitación Clásica con 2 camas grandes o dobles, vistas al océano y balcón.");
        room2.setImage("https://static11.com-hotel.com/uploads/hotel/11063/photo/sheraton-lima-hotel-convention-center_155183515633.jpg");
        room2.setPrice(20000);
        room2.setRooms(1);
        room2.setMt(100);

        Room room3 = new Room();
        room3.setId(3);
        room3.setName("Habitación 3, Doble-Normal");
        room3.setDescription("Habitación Superior en planta alta con vistas al océano y cama dobles.");
        room3.setImage("https://cf.bstatic.com/xdata/images/hotel/max1024x768/461652315.jpg?k=f51a6b496658d7625896c48445c617885c8580f67c1625d52434253413a15423&o=&hp=1");
        room3.setPrice(30000);
        room3.setRooms(1);
        room3.setMt(100);

        Room room4 = new Room();
        room4.setId(4);
        room4.setName("Habitación 4, Doble-King");
        room4.setDescription("Suite Executive en planta superior con cama extragrande y vistas al océano.");
        room4.setImage("https://static11.com-hotel.com/uploads/hotel/11063/photo/sheraton-lima-hotel-convention-center_155183515633.jpg");
        room4.setPrice(40000);
        room4.setRooms(1);
        room4.setMt(100);

        Room room5 = new Room();
        room5.setId(5);
        room5.setName("Habitación 5, Doble-King");
        room5.setDescription("Suite Executive en planta superior con cama extragrande y vistas al océano.");
        room5.setImage("https://cf.bstatic.com/xdata/images/hotel/max1024x768/461652315.jpg?k=f51a6b496658d7625896c48445c617885c8580f67c1625d52434253413a15423&o=&hp=1");
        room5.setPrice(50000);
        room5.setRooms(1);
        room5.setMt(100);

        Room room6 = new Room();
        room6.setId(6);
        room6.setName("Habitación 6, Doble-King");
        room6.setDescription("Suite Executive en planta superior con cama extragrande y vistas al océano.");
        room6.setImage("https://static11.com-hotel.com/uploads/hotel/11063/photo/sheraton-lima-hotel-convention-center_155183515633.jpg");
        room6.setPrice(50000);
        room6.setRooms(1);
        room6.setMt(100);

        Room room7 = new Room();
        room7.setId(7);
        room7.setName("Habitación 7, Doble-King");
        room7.setDescription("Suite Executive en planta superior con cama extragrande y vistas al océano.");
        room7.setImage("https://cf.bstatic.com/xdata/images/hotel/max1024x768/461652315.jpg?k=f51a6b496658d7625896c48445c617885c8580f67c1625d52434253413a15423&o=&hp=1");
        room7.setPrice(70000);
        room7.setRooms(1);
        room7.setMt(100);

        Room room8 = new Room();
        room8.setId(8);
        room8.setName("Habitación 8, Doble-King");
        room8.setDescription("Suite Executive en planta superior con cama extragrande y vistas al océano.");
        room8.setImage("https://static11.com-hotel.com/uploads/hotel/11063/photo/sheraton-lima-hotel-convention-center_155183515633.jpg");
        room8.setPrice(80000);
        room8.setRooms(1);
        room8.setMt(100);

        rooms.add(room1);
        rooms.add(room2);
        rooms.add(room3);
        rooms.add(room4);
        rooms.add(room5);
        rooms.add(room6);
        rooms.add(room7);
        rooms.add(room8);

        return rooms;
    }

    public Room getRoomById(Room room) {
        List<Room> roomList = getRoom();

        for (int i = 0; i < roomList.size(); i++) {
            if (roomList.get(i).getId() == room.getId()) {
                room = roomList.get(i);
            }
        }return room;
    }

    public int calculateValueRoom(int valueRoom, int cantidadNoches){
        int value = valueRoom * cantidadNoches;
        return value;
    }
}
