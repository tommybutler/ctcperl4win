# written by B::C Makefile.PL. $extra_{cflags,libs} need a leading space if used.
package B::C::Config;

$VERSION = '1.55_06';
# -fav-init optimization
$have_independent_comalloc = 0;
$use_declare_independent_comalloc = 0;

# broken or patched upstream 5.22 ByteLoader. undef for yet undecided
$have_byteloader = 0;
# cperl 5.22.2:
$have_op_rettype = 0;
$have_HEK_STATIC = 1;
# use extra compiler flags, after ccopts, resp. ldopts
$extra_cflags = "";
$extra_libs = "";
@deps = qw( AnyDBM_File AutoLoader B B::AV B::Asmdata B::BINOP B::BM B::C B::C::Config B::C::InitSection B::C::Section B::CC B::COP B::CV B::FAKEOP B::FM B::GV B::HE B::HV B::INVLIST B::IO B::IV B::LEXWARN B::LISTOP B::LOGOP B::LOOP B::MAGIC B::METHOP B::NULL B::NV B::OBJECT B::OP B::PADLIST B::PADNAME B::PADNAMELIST B::PADOP B::PMOP B::PV B::PVIV B::PVLV B::PVMG B::PVNV B::PVOP B::REGEXP B::RHE B::RV B::SPECIAL B::STASHGV B::SV B::SVOP B::Section B::UNOP B::UNOP_AUX B::UV CORE CORE::GLOBAL Carp Config DB DynaLoader EV Encode Errno Exporter Exporter::Heavy ExtUtils ExtUtils::Constant ExtUtils::Constant::ProxySubs Fcntl FileHandle IO IO::File IO::Handle IO::Poll IO::Seekable IO::Socket IO::Socket::SSL Int Internals Net Net::DNS Num O POSIX PerlIO PerlIO::Layer PerlIO::scalar Regexp SelectSaver Str Symbol UInt UNIVERSAL XSConfig XSLoader __ANON__ arybase arybase::mg attributes constant coretypes int main mro num re str strict threads uint utf8 vars version warnings warnings::register Socket Socket );

our %Config = (
	archname => 'cygwin-thread-multi',
	cc => 'gcc',
	ccflags => '-DPERL_USE_SAFE_PUTENV -U__STRICT_ANSI__ -fwrapv -fno-strict-aliasing -pipe -fstack-protector-strong -D_FORTIFY_SOURCE=2',
	d_c99_variadic_macros => 'define',
	d_dlopen => 'define',
	d_isinf => 'define',
	d_isnan => 'define',
	d_longdbl => 'define',
	dlext => 'dll',
	i_dlfcn => 'define',
	ivdformat => '"ld"',
	ivsize => 8,
	longsize => 8,
	mad => undef,
	nvgformat => '"g"',
	ptrsize => 8,
	static_ext => 'Win32CORE',
	usecperl => 'define',
	usedl => 'define',
	useithreads => 'define',
	uselongdouble => undef,
	usemultiplicity => 'define',
	usemymalloc => 'n',
	uvuformat => '"lu"',
);

1;
