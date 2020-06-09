#region curl
curl -i -X GET "http://127.0.0.1:2113/stats" -u "admin:changeit"
#endregion curl

#region response
HTTP/1.1 200 OK
Access-Control-Allow-Methods: GET, OPTIONS
Access-Control-Allow-Headers: Content-Type, X-Requested-With, X-Forwarded-Host, X-Forwarded-Prefix, X-PINGOTHER, Authorization, ES-LongPoll, ES-ExpectedVersion, ES-EventId, ES-EventType, ES-RequiresMaster, ES-HardDelete, ES-ResolveLinkTos
Access-Control-Allow-Origin: *
Access-Control-Expose-Headers: Location, ES-Position, ES-CurrentVersion
Cache-Control: max-age=1, public
Vary: Accept
Content-Type: application/json; charset=utf-8
Server: Mono-HTTPAPI/1.0
Date: Thu, 06 Dec 2018 09:39:21 GMT
Content-Length: 12664
Keep-Alive: timeout=15,max=100

{
  "proc": {
    "startTime": "2018-12-06T09:33:13.0000000Z",
    "id": 1,
    "mem": 84639744,
    "cpu": 9.739911,
    "cpuScaled": 4.86995554,
    "threadsCount": 25,
    "contentionsRate": 57.86452,
    "thrownExceptionsRate": 0.0,
    "gc": {
      "allocationSpeed": 0.0,
      "gen0ItemsCount": 14,
      "gen0Size": 0,
      "gen1ItemsCount": 1,
      "gen1Size": 0,
      "gen2ItemsCount": 0,
      "gen2Size": 0,
      "largeHeapSize": 0,
      "timeInGc": 0.0,
      "totalBytesInHeaps": 0
    },
    "diskIo": {
      "readBytes": 30879744,
      "writtenBytes": 987136,
      "readOps": 75895,
      "writeOps": 726
    },
    "tcp": {
      "connections": 0,
      "receivingSpeed": 0.0,
      "sendingSpeed": 0.0,
      "inSend": 0,
      "measureTime": "00:00:29.5561630",
      "pendingReceived": 0,
      "pendingSend": 0,
      "receivedBytesSinceLastRun": 0,
      "receivedBytesTotal": 0,
      "sentBytesSinceLastRun": 0,
      "sentBytesTotal": 0
    }
  },
  "sys": {
    "cpu": 8.282546,
    "freeMem": 375517184,
    "drive": {
      "/var/lib/eventstore": {
        "availableBytes": 13525999616,
        "totalBytes": 15679725568,
        "usage": "13%",
        "usedBytes": 2153725952
      }
    }
  },
  "es": {
    "checksum": 205117,
    "checksumNonFlushed": 205117,
    "queue": {
      "index Committer": {
        "queueName": "Index Committer",
        "groupName": "",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 29590.349000000002,
        "currentIdleTime": null,
        "currentItemProcessingTime": "0:00:06:06.3938445",
        "idleTimePercent": 0.0,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 0,
        "totalItemsProcessed": 60,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "CommitAck"
      },
      "mainQueue": {
        "queueName": "MainQueue",
        "groupName": "",
        "avgItemsPerSecond": 13,
        "avgProcessingTime": 0.012954452926208651,
        "currentIdleTime": "0:00:00:00.0290638",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.982804190417681,
        "length": 0,
        "lengthCurrentTryPeak": 5,
        "lengthLifetimePeak": 14,
        "totalItemsProcessed": 6366,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "Schedule"
      },
      "monitoringQueue": {
        "queueName": "MonitoringQueue",
        "groupName": "",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 584.2229,
        "currentIdleTime": null,
        "currentItemProcessingTime": "0:00:00:00.5484086",
        "idleTimePercent": 98.025629883927763,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 25,
        "inProgressMessage": "GetFreshStats",
        "lastProcessedMessage": "GetFreshStats"
      },
      "projection Core #0": {
        "queueName": "Projection Core #0",
        "groupName": "Projection Core",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 0.00966,
        "currentIdleTime": "0:00:00:29.5815685",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.999673204215767,
        "length": 0,
        "lengthCurrentTryPeak": 2,
        "lengthLifetimePeak": 22,
        "totalItemsProcessed": 871,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "EventReaderIdle"
      },
      "projection Core #1": {
        "queueName": "Projection Core #1",
        "groupName": "Projection Core",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 0.01033,
        "currentIdleTime": "0:00:00:29.5815941",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.999651237588822,
        "length": 0,
        "lengthCurrentTryPeak": 2,
        "lengthLifetimePeak": 15,
        "totalItemsProcessed": 505,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "EventReaderIdle"
      },
      "projection Core #2": {
        "queueName": "Projection Core #2",
        "groupName": "Projection Core",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 0.010700000000000001,
        "currentIdleTime": "0:00:00:29.5816107",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.999638057613979,
        "length": 0,
        "lengthCurrentTryPeak": 2,
        "lengthLifetimePeak": 53,
        "totalItemsProcessed": 2897,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "EventReaderIdle"
      },
      "projections Master": {
        "queueName": "Projections Master",
        "groupName": "",
        "avgItemsPerSecond": 19,
        "avgProcessingTime": 0.0076020905923344945,
        "currentIdleTime": "0:00:00:00.0398806",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.9850336301286,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 12,
        "totalItemsProcessed": 7285,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "Schedule"
      },
      "storage Chaser": {
        "queueName": "Storage Chaser",
        "groupName": "",
        "avgItemsPerSecond": 104,
        "avgProcessingTime": 0.00693448498546981,
        "currentIdleTime": "0:00:00:00.0012769",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.926313794228051,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 0,
        "totalItemsProcessed": 38228,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "ChaserCheckpointFlush"
      },
      "storageReaderQueue #1": {
        "queueName": "StorageReaderQueue #1",
        "groupName": "StorageReaderQueue",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 0.19243333333333335,
        "currentIdleTime": "0:00:00:00.5597500",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.994147076653874,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 274,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "ReadStreamEventsBackward"
      },
      "storageReaderQueue #2": {
        "queueName": "StorageReaderQueue #2",
        "groupName": "StorageReaderQueue",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 0.11274545454545454,
        "currentIdleTime": "0:00:00:00.0290949",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.995787138839844,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 280,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "ReadStreamEventsForward"
      },
      "storageReaderQueue #3": {
        "queueName": "StorageReaderQueue #3",
        "groupName": "StorageReaderQueue",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 0.0953888888888889,
        "currentIdleTime": "0:00:00:02.0327931",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.9970993914555,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 262,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "ReadStreamEventsForward"
      },
      "storageReaderQueue #4": {
        "queueName": "StorageReaderQueue #4",
        "groupName": "StorageReaderQueue",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 0.087377777777777776,
        "currentIdleTime": "0:00:00:01.0318977",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.997328182310355,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 282,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "ReadStreamEventsForward"
      },
      "storageWriterQueue": {
        "queueName": "StorageWriterQueue",
        "groupName": "",
        "avgItemsPerSecond": 0,
        "avgProcessingTime": 4.42,
        "currentIdleTime": "0:00:00:29.5843498",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.985062693918209,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 2,
        "totalItemsProcessed": 65,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "WritePrepares"
      },
      "subscriptions": {
        "queueName": "Subscriptions",
        "groupName": "",
        "avgItemsPerSecond": 1,
        "avgProcessingTime": 0.022990322580645161,
        "currentIdleTime": "0:00:00:00.0293309",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.997594823346091,
        "length": 0,
        "lengthCurrentTryPeak": 0,
        "lengthLifetimePeak": 10,
        "totalItemsProcessed": 436,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "CheckPollTimeout"
      },
      "timer": {
        "queueName": "Timer",
        "groupName": "",
        "avgItemsPerSecond": 32,
        "avgProcessingTime": 0.024676409185803758,
        "currentIdleTime": "0:00:00:00.0093879",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.918283810581556,
        "length": 9,
        "lengthCurrentTryPeak": 15,
        "lengthLifetimePeak": 614,
        "totalItemsProcessed": 12915,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "ExecuteScheduledTasks"
      },
      "worker #1": {
        "queueName": "Worker #1",
        "groupName": "Workers",
        "avgItemsPerSecond": 1,
        "avgProcessingTime": 0.18848333333333334,
        "currentIdleTime": "0:00:00:00.0295425",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.973144953850138,
        "length": 0,
        "lengthCurrentTryPeak": 1,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 520,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "PurgeTimedOutRequests"
      },
      "worker #2": {
        "queueName": "Worker #2",
        "groupName": "Workers",
        "avgItemsPerSecond": 1,
        "avgProcessingTime": 0.2823279069767442,
        "currentIdleTime": "0:00:00:00.0295030",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.958977493122433,
        "length": 0,
        "lengthCurrentTryPeak": 1,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 516,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "PurgeTimedOutRequests"
      },
      "worker #3": {
        "queueName": "Worker #3",
        "groupName": "Workers",
        "avgItemsPerSecond": 1,
        "avgProcessingTime": 0.018606976744186047,
        "currentIdleTime": "0:00:00:00.0294627",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.997299118709734,
        "length": 0,
        "lengthCurrentTryPeak": 1,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 517,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "PurgeTimedOutRequests"
      },
      "worker #4": {
        "queueName": "Worker #4",
        "groupName": "Workers",
        "avgItemsPerSecond": 1,
        "avgProcessingTime": 0.013951162790697674,
        "currentIdleTime": "0:00:00:00.0292979",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.997871940733575,
        "length": 0,
        "lengthCurrentTryPeak": 1,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 517,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "PurgeTimedOutRequests"
      },
      "worker #5": {
        "queueName": "Worker #5",
        "groupName": "Workers",
        "avgItemsPerSecond": 1,
        "avgProcessingTime": 0.00796046511627907,
        "currentIdleTime": "0:00:00:00.0290928",
        "currentItemProcessingTime": null,
        "idleTimePercent": 99.998844217454163,
        "length": 0,
        "lengthCurrentTryPeak": 1,
        "lengthLifetimePeak": 1,
        "totalItemsProcessed": 517,
        "inProgressMessage": "<none>",
        "lastProcessedMessage": "ReadStreamEventsForwardCompleted"
      }
    },
    "writer": {
      "lastFlushSize": 17025,
      "lastFlushDelayMs": 4.2292,
      "meanFlushSize": 4018,
      "meanFlushDelayMs": 2.6562450980392156,
      "maxFlushSize": 17025,
      "maxFlushDelayMs": 6.9021,
      "queuedFlushMessages": 0
    },
    "readIndex": {
      "cachedRecord": 306,
      "notCachedRecord": 0,
      "cachedStreamInfo": 3012,
      "notCachedStreamInfo": 90,
      "cachedTransInfo": 0,
      "notCachedTransInfo": 0
    }
  }
}
#endregion response