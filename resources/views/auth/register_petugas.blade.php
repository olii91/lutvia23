@extends('layout')

@section('title', 'Register Petugas | Sistem Pengaduan Masyarakat')
@section('content')
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        @if (session('status'))
            <div class="alert alert-success"><strong>{{session('status')}}</strong></div>
        @endif
        <div class="card shadow">
          <div class="card-header">
              <strong>Register petugas</strong>
          </div>
          <div class="card-body">
              <form action="{{url('/petugas/register')}}" method="post">
                @csrf
                <div class="form-group">
                  <label for="username">id_petugas</label>
                  <input type="number" class="form-control @error('id_petugas') is-invalid @enderror" size="16" name="id_petugas" placeholder="masukan id_petugas anda" value="{{old('id_petugas')}}">
                  @error('id_petugas') 
                  <div class="invalid-feedback">{{$message}}</div>
                @enderror
                </div>
                <div class="form-group">
                  <label for="username">username</label>
                  <input type="text" class="form-control @error('username') is-invalid @enderror"  name="username" placeholder="masukan username anda" value="{{old('username')}}">
                  @error('username') 
                  <div class="invalid-feedback">{{$message}}</div>
                @enderror
                </div>
                <div class="form-group">
                  <label for="username">Nama Petugas</label>
                  <input type="text" class="form-control @error('nama_petugas') is-invalid @enderror"  name="nama_petugas" placeholder="masukan nama anda" value="{{old('nama_petugas')}}">
                  @error('nama_petugas') 
                    <div class="invalid-feedback">{{$message}}</div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="username">Password</label>
                  <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="masukan password anda">
                  @error('password') 
                    <div class="invalid-feedback">{{$message}}</div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="username">Konfirmasi Password</label>
                  <input type="password" class="form-control @error('password') is-invalid @enderror" name="password_confirmation" placeholder="masukan password sekali lagi">
                  @error('password') 
                    <div class="invalid-feedback">{{$message}}</div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="username">No Telp</label>
                  <input type="number" class="form-control @error('no_telp') is-invalid @enderror"  name="no_telp" placeholder="masukan Nomor anda" value="{{old('no_telp')}}">
                  @error('no_telp') 
                    <div class="invalid-feedback">{{$message}}</div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="username">Level</label>
                  <x-adminlte-select name="level">
                  <option>Admin</option>
                  
                  </x-adminlte-select>
                  @error('level') 
                    <div class="invalid-feedback">{{$message}}</div>
                  @enderror
                </div>
                <button type="submit" class="btn btn-primary mt-2">Register</button>
                <a href="{{url('/')}}" class="btn btn-danger mt-2">kembali</a>
                <a href="{{url('petugas/login')}}" class="my-2 float-right">Sudah Punya Akun ?</a>
              </form>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection
