import numpy
cimport numpy

cdef int convert_24bit(unsigned char* byte_string):
    return (byte_string[0]<<24|byte_string[1]<<16|byte_string[2]<<8)>>8


def read_traces(file_ptr,int samples, int traces, int hdr_length):

    cdef numpy.ndarray[numpy.float_t,ndim=2] data = numpy.empty((traces,samples),dtype=numpy.float)
    cdef double[:,:] data_view = data
    cdef bytes data_raw
    cdef char* data_buffer
    cdef int trace, sample

    for trace in range(traces):
        file_ptr.seek(hdr_length,1)
        data_raw = file_ptr.read(3*samples)
        data_buffer = <char*>data_raw

        for sample in range(samples):

            data_view[trace,sample] = convert_24bit(data_buffer[sample*3:sample*3+3])

    return data
