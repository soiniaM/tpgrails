package projet


class SaleAd {

    String title
    String description
    Double price

    Date dateCreated
    Date lastUpdated



    static hasMany = [illustrations: Illustration]

    static belongsTo = [author: User]

    static constraints = {
        title blank: false, nullable: false, size: 5..50
        description blank: false, nullable: false
        price nullable: false, min: 0d
    }


}
