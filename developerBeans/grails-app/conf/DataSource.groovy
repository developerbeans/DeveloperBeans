hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    production {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
            pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "app42paas"
            //url = "jdbc:mysql://vpcdb.ctlalkoy92rh.us-west-2.rds.amazonaws.com/app42_paas?autoReconnect=true"
            url = "jdbc:mysql://production-app42paas-rds.ctlalkoy92rh.us-west-2.rds.amazonaws.com/app42_paas?autoReconnect=true&jdbcCompliantTruncation=false"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            properties {
                validationQuery="select 1"
                testWhileIdle=true
                timeBetweenEvictionRunsMillis=60000
            }
        }
    }
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = ""
            url = "jdbc:mysql://localhost/dev_beans?autoReconnect=true&jdbcCompliantTruncation=false"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            properties {
                validationQuery="select 1"
                testWhileIdle=true
                timeBetweenEvictionRunsMillis=60000 
            }
        }
    }
    test {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
            pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "app42paas"
            url = "jdbc:mysql://test-env-rds.ctlalkoy92rh.us-west-2.rds.amazonaws.com/app42_paas?autoReconnect=true&jdbcCompliantTruncation=false"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            properties {
                validationQuery="select 1"
                testWhileIdle=true
                timeBetweenEvictionRunsMillis=60000
            }
        }
    }

}
