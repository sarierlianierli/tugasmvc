$(function(){
	$('.tampilTambahData').on('click', function(){
		$('#tombolTambahData').html('Tambah Data Mahasiswa');
		$('.modal-footer button[type=submit]').html('Tambah Data');
	});

	$('.tampilModalUbah').on('click', function(){
		
		$('#judulModal').html('Ubah Data Mahasiswa');
		$('.modal-footer button[type=submit]').html('Ubah Data');
		const id = $(this).data('id'); 
		
		$.ajax({
			url: 'http://localhost/phpmvc/public/mahasiswa/getubah',
			data: {id : id},
			method: 'post',
			dataType: 'json',
			success: function(data){
				$(#nama).val(data.nama);
				$(#nrp).val(data.nrp);
				$(#jurusan).val(data.jurusan);
				$(#email).val(data.email);
				}
		});
		
	});
});