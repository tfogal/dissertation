class Freeprocessor {
  virtual void Init(const std::string&);
  virtual ~Freeprocessor();

  enum DType { FP_FLOAT, FP_INT8, ... };
  virtual void Metadata(const size_t[3],
                        enum DType);
  virtual void Stream(const void* buffer,
                      size_t n);
};
extern "C" Freeprocessor* create();
