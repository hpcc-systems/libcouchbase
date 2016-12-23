# These define the various source file listings of various modules
# within the library.
# This is included by the top-level CMakeLists.txt

# couchbase_utils
SET(LCB_UTILS_SRC
    contrib/genhash/genhash.c
    src/strcodecs/base64.c
    src/gethrtime.c
    src/dns-srv.c
    src/hashtable.c
    src/list.c
    src/logging.c
    src/ringbuffer.c
    src/simplestring.c)

# lcbio
FILE(GLOB LCB_IO_SRC src/lcbio/*.c)

# common memcached operations
FILE(GLOB LCB_OP_SRC src/operations/*.c)

# memcached packets
FILE(GLOB LCB_MC_SRC src/mc/*.c)

# read buffer management
FILE(GLOB LCB_RDB_SRC src/rdb/*.c)

# send buffer management
FILE(GLOB LCB_NETBUF_SRC src/netbuf/*.c)

# HTTP protocol management
FILE(GLOB LCB_HT_SRC src/lcbht/*.c)
LIST(APPEND LCB_HT_SRC "contrib/http_parser/http_parser.c")

# bucket config ("confmon")
FILE(GLOB LCB_BCONF_SRC src/bucketconfig/*.c)

SET(LCB_CORE_SRC
    ${LCB_OP_SRC}
    ${LCB_BCONF_SRC}
    ${LCB_N1QL_SRC}
    src/bootstrap.c
    src/callbacks.c
    src/legacy.c
    # src/mcserver/negotiate.c
    src/iofactory.c
    src/retrychk.c
    src/settings.c
    src/utilities.c)

SET(LCB_CORE_CXXSRC
    src/instance.cc
    src/auth.cc
    src/bucketconfig/bc_cccp.cc
    src/bucketconfig/bc_file.cc
    src/bucketconfig/confmon.cc
    src/connspec.cc
    src/dump.cc
    src/getconfig.cc
    src/nodeinfo.cc
    src/handler.cc
    src/hostlist.cc
    src/http/http.cc
    src/http/http_io.cc
    src/newconfig.cc
    src/n1ql/params.cc
    src/n1ql/n1ql.cc
    src/n1ql/ixmgmt.cc
    src/cbft.cc
    src/operations/durability.cc
    src/operations/durability-cas.cc
    src/operations/durability-seqno.cc
    src/operations/observe-seqno.cc
    src/operations/stats.cc
    src/operations/store.cc
    src/operations/subdoc.cc
    src/mcserver/mcserver.cc
    src/mcserver/negotiate.cc
    src/retryq.cc
    src/cntl.cc
    src/wait.cc)
