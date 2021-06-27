//package MongoStatics;
//
//import BiziLocal.User;
//import com.mongodb.client.MongoClient;
//import com.mongodb.client.MongoClients;
//import com.mongodb.client.MongoCollection;
//import com.mongodb.client.MongoDatabase;
//import org.bson.Document;
//import org.bson.types.ObjectId;
//
//import static java.util.Arrays.asList;
//
//public class MongoDBMethods {
//
//    public static void insertUser(User user) {
//        String connectionString = System.getProperty("mongodb.uri");
//
//        try (MongoClient mongoClient = MongoClients.create(connectionString)) {
//
//            MongoDatabase database = mongoClient.getDatabase("testing_schema");
//
//            MongoCollection<Document> collection = database.getCollection("users");
//
//            Document document = new Document("_id", new ObjectId());
//
//            document.append("first_name", user.getFirstName())
//
//                    .append("last_name", user.getLastName())
//
//                    .append("email", user.getEmail())
//
//                    .append("password", user.getPassword())
//
//                    .append("devices", asList(new Document("hostname", user.getDevices().get(0).getHostname()).append("device_id", user.getDevices().get(0).getDeviceID())
//                            .append("applications", user.getDevices().get(0).getApplicationsList())));
//
//            collection.insertOne(document);
//        }
//    }
//}
