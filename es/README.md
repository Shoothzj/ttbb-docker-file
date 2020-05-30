```bash
ES_ENDPOINT=localhost:9200
#索引第一个聚会分组的文档
#get-together索引名称
#类型名称group
#属性列表name和organizer
#属性选项两个都是string
curl -H 'Content-Type:application/json; charset=UTF-8' -XPUT 'localhost:9200/get-together/group/1?pretty' -d '{"name":"Elasticsearch Denver","organizer":"Lee"}' -iv

#查询索引列表
curl $ES_ENDPOINT'/_cat/indices?v'

#查询一个索引的详细信息
curl $ES_ENDPOINT'/get-together?pretty'

#删除一个索引
curl -XDELETE $ES_ENDPOINT/index_test

#集群详细信息
curl $ES_ENDPOINT'/_cat/shards?v'

#新增一个文档
curl -XPOST -H 'Content-Type: application/json' $ES_ENDPOINT'/shoothzj/1' -d '{"name":"Late Night with Elasticsearch", "date":"2013-10-25T19:00"}'

#获取索引的映射
curl -H 'Content-Type: application/json' $ES_ENDPOINT'/shoothzj/_mapping?pretty'

#查看所有插件
curl $ES_ENDPOINT'/_cat/plugins'

#查询
curl -XGET -H 'Content-Type: application/json' $ES_ENDPOINT'/get-together/_search' -d '{"query":{"match":{"title":"hadoop"}}}'

#获取词条详细信息
curl -XGET $ES_ENDPOINT'/get-together/_doc/1/_termvector?pretty=true'

#standard隔离
curl -H 'Content-Type:application/json' -XPOST $ES_ENDPOINT'/_analyze?pretty' -d '{"tokenizer":"standard", "text":"Hi, three."}' -iv

#聚集
curl -H 'Content-Type:application/json' $ES_ENDPOINT'/get-together/group/_search?pretty' -d '{
    "aggs" : {
        "top_tags" : {
            "terms" : {
                "field" : "tags.verbatim"
            }
        }
    }
}'
```

```java
request.mapping("_doc", 
        "{\n" +
        "  \"_doc\": {\n" +
        "    \"properties\": {\n" +
        "      \"message\": {\n" +
        "        \"type\": \"text\"\n" +
        "      }\n" +
        "    }\n" +
        "  }\n" +
        "}", 
        XContentType.JSON);
```

ES文档之间的四种关系: Object types, nested documents, parent-child relationships, denormalizing 
对象类型,嵌套文档,父子关系,反规范化

#### ES的缓存
- 过滤器级缓存
- 分片查询缓存
- 操作系统级缓存

#### ES
- 别名和索引是多对多的
- 热门索引的数据放入同一组索引或分片
- 和侧边N元语法相比,前缀匹配需要匹配更多的词条,不过索引量更小
- 滑动窗口包含单个词条,允许更好地用于复合词匹配

#### ES的三种查询方式
- query_and_fetch
- query_then_fetch
- dfs_query_then_fetch //使得分布式打分更准确