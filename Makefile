all: sliding_window_minimum_cpp sliding_window_minimum_hs sliding_window_minimum.html

sliding_window_minimum_cpp: sliding_window_minimum.cpp
	g++ -Wall -O2 -o sliding_window_minimum_cpp sliding_window_minimum.cpp

sliding_window_minimum_hs:
	ghc -O2 -o sliding_window_minimum_hs sliding_window_minimum.hs

sliding_window_minimum.html: README.rst
	rst2html --link-stylesheet --stylesheet=http://people.cs.uct.ac.za/~ksmith/stylesheet.css README.rst > sliding_window_minimum.html

