#ifndef VECTOR_H
#define VECTOR_H

inline s32 max(s32 a, s32 b) {
    return a >= b ? a : b;
}

template <class T>
struct Vector {
    Vector() {
        mCapacity = 0;
        mSize = 0;
        mStorage = (T*)NULL;
    }

    ~Vector() { delete[] mStorage; }

    T& operator[](s32 index) { return mStorage[index]; }

    s32 size() const { return mSize; }

    s32 indexOf(const T& value) const {
        for (int i = 0; i < mSize; i++) {
            if (mStorage[i] == value)
                return i;
        }
        return size();
    }

    bool empty() const {
        u32 ret;
        if (mSize > 0)
            ret = 1;
        else
            ret = 0;
        return ret;
    }

    static void copy(T* src, T* dest, s32 size) {
        for (int i = 0; i < size; i++) {
            *dest++ = *src++;
        }
    }

    bool remove(const T& value) {
        for (int i = 0; i < mSize; i++) {
            if (mStorage[i] == value) {
                copy(&mStorage[i + 1], &mStorage[i], mSize - 1 - i);
                mSize--;
                return true;
            }
        }
        return false;
    }

    // thanks to: maide, pixel, ibot02
    void append(const T& data) {
        s32 new_size = mSize + 1;
        if (mCapacity < new_size) {
            new_size = max(4, new_size * 2);
            T* dest = new T[new_size];
            copy(mStorage, dest, mSize);
            delete[] mStorage;
            mCapacity = new_size;
            mStorage = dest;
        }

        mStorage[mSize++] = data;
    }

protected:
    s32 mCapacity;
    s32 mSize;
    T* mStorage;
};

#endif // VECTOR_H
