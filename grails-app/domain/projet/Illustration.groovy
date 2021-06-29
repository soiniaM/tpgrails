package projet

import grails.rest.Resource

@Resource(uri='/api/saleAds', formats=['json', 'xml'])
class Illustration {

    String filename

    static belongsTo = [saleAd: SaleAd]

    static constraints = {
        filename blank: false, nullable: false
    }
}
