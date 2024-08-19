# Tech Notes

## Arch Types, Patterns

## HTTP Response Codes

### Classes
    1xx : Informational
    2xx : Success
    3xx : Redirection
    4xx : Client Error
    5Xx : Server Error


- 100 : Continue
- 101 : Protocol Change
- 200 : Success
- 201 : Created
- 204 : Delete confirmation
- 301 : moved permanently 
- 302 : points to new location but original URL still works
- 304 : Cache not modified 
- 400 : Bad Request
- 401 : Unauthorized - missing right creds
- 403 : Forbidden - You are not allowed to see this
- 404 : Not found - double check routs and endpoints
- 429 : Too many requests, rate limiter
- 500 : Server error
- 502 : Bad GW - proxy failing to get response
- 503 : Service Unavailable - currently unable to process request




## Swagger 

## Database Internals
### Front End of Database
- Tokenizer : Check if keywords are  valid or not.
- Parser : checks if Instruction is valid.
- Optimizer: Determine the best way to execute query. 

### Back End Components of Database
#### Execution Engine 
- Query Executor
- Cache Management 
- utility Services - AUTH, SEC, BACKUP, METRICS

#### Transaction Manager
- ACID properties adherence : Automacitiy, isolation, consistency  and durability
- Lock Management
- Recovery Manager

#### Shard Manager, Cluster Manager, Replication Manager

#### Concurrency Manager 
- Multi version concurrency control (MVCC)


#### Storage Engine
- Disk storage manager 
- Buffer Manager 
- index Manager

#### Interaction Layer 
- Underlying OS interaction. 