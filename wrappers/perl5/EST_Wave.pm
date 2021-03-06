# This file was automatically generated by SWIG
package EST_Wave;
require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);
package EST_Wavec;
bootstrap EST_Wave;
package EST_Wave;
@EXPORT = qw( );

# ---------- BASE METHODS -------------

package EST_Wave;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package EST_Wave;

*wave_extract_channel = *EST_Wavec::wave_extract_channel;
*wave_combine_channels = *EST_Wavec::wave_combine_channels;
*wave_subwave = *EST_Wavec::wave_subwave;
*wave_divide = *EST_Wavec::wave_divide;
*wave_extract = *EST_Wavec::wave_extract;
*add_waves = *EST_Wavec::add_waves;
*difference = *EST_Wavec::difference;
*rms_error = *EST_Wavec::rms_error;
*abs_error = *EST_Wavec::abs_error;
*correlation = *EST_Wavec::correlation;
*error = *EST_Wavec::error;
*absolute = *EST_Wavec::absolute;
*wave_info = *EST_Wavec::wave_info;
*invert = *EST_Wavec::invert;
*differentiate = *EST_Wavec::differentiate;
*reverse = *EST_Wavec::reverse;

############# Class : EST_Wave::EST_Wave ##############

package EST_Wave::EST_Wave;
@ISA = qw( EST_Wave );
%OWNER = ();
%ITERATORS = ();
*swig_default_sample_rate_get = *EST_Wavec::EST_Wave_default_sample_rate_get;
*swig_default_sample_rate_set = *EST_Wavec::EST_Wave_default_sample_rate_set;
sub new {
    my $pkg = shift;
    my $self = EST_Wavec::new_EST_Wave(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        EST_Wavec::delete_EST_Wave($self);
        delete $OWNER{$self};
    }
}

*a = *EST_Wavec::EST_Wave_a;
*a_safe = *EST_Wavec::EST_Wave_a_safe;
*set_a = *EST_Wavec::EST_Wave_set_a;
*t = *EST_Wavec::EST_Wave_t;
*num_samples = *EST_Wavec::EST_Wave_num_samples;
*num_channels = *EST_Wavec::EST_Wave_num_channels;
*sample_rate = *EST_Wavec::EST_Wave_sample_rate;
*set_sample_rate = *EST_Wavec::EST_Wave_set_sample_rate;
*length = *EST_Wavec::EST_Wave_length;
*end = *EST_Wavec::EST_Wave_end;
*have_left_context = *EST_Wavec::EST_Wave_have_left_context;
*sample_type = *EST_Wavec::EST_Wave_sample_type;
*set_sample_type = *EST_Wavec::EST_Wave_set_sample_type;
*file_type = *EST_Wavec::EST_Wave_file_type;
*set_file_type = *EST_Wavec::EST_Wave_set_file_type;
*name = *EST_Wavec::EST_Wave_name;
*set_name = *EST_Wavec::EST_Wave_set_name;
*resize = *EST_Wavec::EST_Wave_resize;
*resample = *EST_Wavec::EST_Wave_resample;
*rescale = *EST_Wavec::EST_Wave_rescale;
*clear = *EST_Wavec::EST_Wave_clear;
*copy = *EST_Wavec::EST_Wave_copy;
*fill = *EST_Wavec::EST_Wave_fill;
*empty = *EST_Wavec::EST_Wave_empty;
*load = *EST_Wavec::EST_Wave_load;
*load_file = *EST_Wavec::EST_Wave_load_file;
*save = *EST_Wavec::EST_Wave_save;
*save_file = *EST_Wavec::EST_Wave_save_file;
*integrity = *EST_Wavec::EST_Wave_integrity;
*info = *EST_Wavec::EST_Wave_info;
*play = *EST_Wavec::EST_Wave_play;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package EST_Wave;

1;
