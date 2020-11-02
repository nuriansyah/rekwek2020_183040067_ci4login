<?= $this->extend('layout/template'); ?>


<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="/img/<?= $comics['sampul']; ?>" class="card-img" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $comics['judul']; ?></h5>
                            <p class="card-text"><b>Penulis : </b><?= $comics['penulis']; ?></p>
                            <p class="card-text"><small class="text-muted">Penerbit : <?= $comics['penerbit']; ?></small></p>
                            <a href="/comics/edit/<?= $comics['slug']; ?>" class="btn btn-warning">Edit</a>

                            <form action="/comics/<?= $comics['id']; ?>" method="POST" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" id="" value="DELETE" onclick="return confirm('apakah anda yakin')">
                                <button type="submit" class="btn btn-danger ">Delete</button>
                            </form>
                            <br>
                            <a href="http://">Kembali ke daftar komik</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection('content'); ?>