rs.initiate(
    {
        _id: "ttbb",
        configsvr: true,
        members: [
            { _id: 0, host: "mongo-config-0.mongo-config:27019" },
            { _id: 1, host: "mongo-config-1.mongo-config:27019" }
        ]
    }
)