function fn(s) {
    var simpleDateFormat = Java.type("java.text.SimpleDateFormat");
    var sdf = new simpleDateFormat("yyyy-MM-dd'T'HH:mm:ss:ms'Z'");

    try {
        sdf.parse(s).time;
        return true;
    } catch (ex) {
        karate.log("*** invalid date string: ", s);
        return false;
    }
}