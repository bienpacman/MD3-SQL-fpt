use fpt;
-- Câu 3: Liệt kê những dòng xe có số chỗ ngồi trên 5 chỗ
select dongxe.DONGXE ,dongxe.SOCHONGOI
from dongxe
group by dongxe.DONGXE ,dongxe.SOCHONGOI
having SOCHONGOI > 5
;

-- Câu 4: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp những dòng xe
select dangkycungcap.MaNhaCC , dangkycungcap.Dongxe , dangkycungcap.MaMP, mucphi.DONGIA
from mucphi join dangkycungcap  on dangkycungcap.MaMP = DONGIA
group by   dangkycungcap.Dongxe
having DONGXE = 'BMW'

