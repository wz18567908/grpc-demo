module wz.com/server

go 1.12

require (
	github.com/dkfbasel/protobuf v0.0.0-20190418135135-2865eeb341f2 // indirect
	github.com/golang/protobuf v1.3.2
	github.com/grpc-ecosystem/grpc-gateway v1.9.4 // indirect
	golang.org/x/net v0.0.0-20181220203305-927f97764cc3
	google.golang.org/grpc v1.19.0
)

replace golang.org/x/net v0.0.0-20181220203305-927f97764cc3 => golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3

replace golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a => golang.org/x/sys v0.0.0-20190602015325-4c4f7f33c9ed
