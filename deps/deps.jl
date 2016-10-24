macro checked_lib(libname, path)
    if (Libdl.dlopen_e(path) == C_NULL)
      error("Unable to load \n\n$libname ($path) Please re-run Pkg.build(package), and restart Julia.")
    end
    quote const $(esc(libname)) = $path end
end
@checked_lib liblmbmb "/home/baron/.julia/v0.5/LMBMB/deps/liblmbmb.so"
