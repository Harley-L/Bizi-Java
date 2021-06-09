package com.mongodb.learning;

import com.mongodb.client.*;
import org.bson.Document;
import org.bson.types.ObjectId;

import java.sql.Time;
import java.util.ArrayList;

import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;


public class CreateAppInstance {
    public static void main(String[] args) {
        Time[][] times = new Time[10][2];
        for (int i = 0; i < 10; i++) {
            times[i] = new Time[]{new Time(100000 * i), new Time(100000 * i + 20000)};
        }


        //addTimeToDB(1, "Pizza Snake", times);
        addSessionToTime(1, "Pizza Snake", new Time[]{new Time(10000), new Time(120000)});
    }


    private static void addSessionToTime(int userID, String appName, Time[] time) { // need to check that date is same.
        try (MongoClient mongoClient = MongoClients.create(System.getProperty("mongodb.uri"))) {

            MongoDatabase database = mongoClient.getDatabase("testing_schema");

            MongoCollection<Document> collection = database.getCollection("times");

            FindIterable<Document> document = collection.find(and(eq("user_id", userID), eq("app_name", appName)));

            Document d = document.first();

            System.out.println(d);

            ArrayList<Document> writtenTimes = (ArrayList<Document>) d.get("times");
            writtenTimes.add(new Document("start", time[0]).append("end", time[1]));

            collection.updateOne(and(eq("user_id", userID), eq("app_name", appName)), new Document("$set", new Document("times", writtenTimes)));


            for (Document document1 : document) {
                System.out.println(document1);
            }
        }
    }

    private static void addTimeToDB(int userID, String appName, Time[][] times) {
        try (MongoClient mongoClient = MongoClients.create(System.getProperty("mongodb.uri"))) {

            MongoDatabase database = mongoClient.getDatabase("testing_schema");

            MongoCollection<Document> collection = database.getCollection("times");


            Document data = new Document("_id", new ObjectId());

            data.append("user_id", userID)

                    .append("app_name", appName);

            ArrayList<Document> timeList = new ArrayList<>(times.length);

            for (Time[] time : times) {
                timeList.add(new Document("start", time[0]).append("end", time[1]));
            }

            data.append("times", timeList);

            collection.insertOne(data);
        }
    }
}
