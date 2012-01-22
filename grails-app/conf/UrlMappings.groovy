class UrlMappings {

    static mappings = {

        "/$controller/$action?/$id?" ()

        "/" (controller: 'bank')
        "500" (view: '/error')
    }
}
