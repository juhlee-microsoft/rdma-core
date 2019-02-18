# SPDX-License-Identifier: (GPL-2.0 OR Linux-OpenIB)
# Copyright (c) 2019, Mellanox Technologies. All rights reserved. See COPYING file

from pyverbs.base cimport PyverbsCM
from . cimport libibverbs as v


cdef class MR(PyverbsCM):
    cdef object pd
    cdef v.ibv_mr *mr
    cdef void *buf
    cpdef read(self, length, offset)
