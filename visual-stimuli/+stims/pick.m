function pick    % stims.pick allows picking one of several preconfigured visual stimuli

reload(psy.getSchema)  % preload to speed up the initialization

parentTable = common.Animal;

<<<<<<< HEAD
menu = {% menu-item    callback
    'grating: 1s ON/1s OFF (384 s)'               setParams(stims.Grating, 2, 'direction', 0:15:359, 'pre_blank', 1.0, 'trial_duration', 1.0, 'aperture_radius', 2.0, 'init_phase', 0:0.25:0.75)
    'grating: 1s ON/1s OFF (384 s)'               setParams(stims.Grating, 1, 'second_photodiode', [0 1], 'direction', 0:15:359, 'pre_blank', 1.0, 'trial_duration', 1.0, 'aperture_radius', 2.0, 'init_phase', 0:0.25:0.75)
    'grating: 1s ON/0s OFF (288 s)'               setParams(stims.Grating, 4, 'direction', 0:15:359, 'pre_blank', 0.0, 'trial_duration', 1.0, 'aperture_radius', 0.63, 'init_phase', 0:0.25:0.75)
    'grating: [0.5 1.0 2.0]s ON/0.5s OFF (960 s)' setParams(stims.Grating, 2, 'direction', 0:15:359, 'pre_blank', 0.5, 'aperture_radius', 0.63, 'trial_duration', [0.5 1.0 2.0], 'init_phase', [0 .5])
    'grating: in four spots (960 s)'              setParams(stims.Grating, 8, 'pre_blank', 2, 'trial_duration', 3.0, 'direction', [90 180], 'aperture_radius', 0.3, 'aperture_x', [-0.47 0.47], 'aperture_y',[-0.32 0.32], 'temp_freq',4,'spatial_freq',.03)
    %'grating: in four spots (960 s)'              setParams(stims.Grating, 12, 'pre_blank', 6, 'trial_duration', 4.0, 'direction', [90 180], 'aperture_radius', 0.2, 'aperture_x', [-0.4 0.4], 'aperture_y',[-0.3 0.3], 'temp_freq',8 ,'spatial_freq',.03)
    %'grating: adaptation in one spot ()'          setParams(stims.Grating, 6, 'pre_blank', 6, 'trial_duration', 4.0, 'direction', [0 90 180 270], 'aperture_radius', 0.3, 'aperture_x', -.4, 'aperture_y', -.4, 'spatial_freq', .08, 'temp_freq', 1, 'phase2_fraction', 0.5, 'phase2_temp_freq', -1')
    %'grating: in one spot (800 s)'                setParams(stims.Grating, 30, 'pre_blank', 6, 'trial_duration', 4.0, 'direction', [90 180], 'aperture_radius', 0.2, 'aperture_x', -0.4, 'aperture_y',-0.3, 'spatial_freq',.046,'temp_freq',0.87)
    'grating: 1s ON/1s OFF (384 s), multiple TF,SF' setParams(stims.Grating, 5, 'direction', [0 90], 'pre_blank', 2.0, 'trial_duration', 1.0, 'aperture_radius', 0.63, 'spatial_freq',[.02 .04 .08 .12 .16],'temp_freq',[2 4 6 8 10],'grating','sqr')
    'looming (480 s)'        setParams(stims.Looming, 20, 'pre_blank', 6, 'loom_duration', 2, 'looming_rate', [2 4 8], 'final_radius', 26.5, 'luminance', 5, 'contrast', 0.95)
    %'moving bar: white on black (384 s)'  setParams(stims.MovingBar, 12, 'luminance', 10, 'contrast', 0.97, 'bg_color', 0, 'bar_color', 254, 'trial_duration', 4)
    %'moving bar: 2 contrasts (384 s)'     setParams(stims.MovingBar, 6, 'luminance', 10, 'contrast', 0.97, 'bg_color', 92, 'bar_color', [0 254], 'trial_duration', 4)
    'noise map (800 s)'   setParams(stims.NoiseMap,1)
    'dot map (792 s)'     setParams(stims.DotMap, 1)
    };
=======

simpleGrating = struct(...
    'prompt', 'grating: 1s ON/1s OFF (384 s)', ...
    'logger', stims.core.Logger(psy.Session, psy.Condition, psy.Trial, psy.Grating), ...
    'constants', ...
    struct(...
    'stimulus', 'grating', ...  % stimulus name recorded in the session table
    'monitor_distance', 10, ... (cm)
    'monitor_size', 7, ...      (inches) diagonal
    'monitor_aspect', 1.7, ...  (physical aspect ratio W/H)
    'resolution_x', 1024, ...   (pixels)
    'resolution_y',  600 ...    (pixels)
    ), ...
    'blocks', 4, ...
    'stim', {{    
    setParams(stims.Grating, ...
    'grating','sin', ...
    'second_photodiode', [-1,1], ...
    'direction', 0:90:359, ...
    'pre_blank', 2.934, ...
    'trial_duration', 0.978, ...
    'aperture_radius', 2.0, ...
    'init_phase', 0:0.25:0.75) ...
    }});

jakeGrating = struct(...
    'prompt', 'grating: 1s ON/1s OFF (384 s)', ...
    'logger', stims.core.Logger(psy.Session, psy.Condition, psy.Trial, psy.Grating), ...
    'constants', ...
    struct(...
    'stimulus', 'grating', ...  % stimulus name recorded in the session table
    'monitor_distance', 10, ... (cm)
    'monitor_size', 7, ...      (inches) diagonal
    'monitor_aspect', 1.7, ...  (physical aspect ratio W/H)
    'resolution_x', 1024, ...   (pixels)
    'resolution_y',  600 ...    (pixels)
    ), ...
    'blocks', 4, ...
    'stim', {{    
    setParams(stims.Grating, ...
    'grating','sin', ...
    'second_photodiode', [-1,1], ...
    'direction', 0:30:359, ...
    'pre_blank', 1 , ...
    'trial_duration', 1, ...
    'aperture_radius', 2.0, ...
    'init_phase', 0:0.25:0.75) ...
    }});


electricalGrating = struct(...
    'prompt', 'Jake''s electrical stim (1260 s)', ...
    'logger', stims.core.Logger(psy.Session, psy.Condition, psy.Trial, psy.Grating), ...
    'constants', struct(...
    'stimulus', 'grating', ... % stimulus name recorded in the session table
    'monitor_distance', 10, ...  (cm)
    'monitor_size', 7, ...       (inches) diagonal
    'monitor_aspect', 1.7, ...   (physical aspect ratio W/H)
    'resolution_x', 1024, ...     (pixels)
    'resolution_y',  600 ...      (pixels)
    ), ...
    'blocks', 10, ...
    'stim', {{
    
    setParams(stims.Grating, ...
    'second_photodiode', -1, ...
    'direction', 0:45:359, ...
    'pre_blank', 0, ...
    'trial_duration', 0.5, ...
    'temp_freq', 2,...
    'spatial_freq', 0.04, ...
    'aperture_radius', 2.0)
    
    stims.Pause(5)
    
    setParams(stims.Grating, ...
    'second_photodiode',  1, ...
    'direction', 0:45:359,  ...
    'pre_blank', 0, ...
    'trial_duration', 0.5, ...
    'temp_freq', 2,...
    'spatial_freq', 0.04, ...
    'aperture_radius', 2.0)
    
    stims.Pause(5)
    }}...
    );


quadrantGrating = struct(...
    'prompt', 'Shan''s quadrant grating (960 s)', ...
    'logger', stims.core.Logger(psy.Session, psy.Condition, psy.Trial, psy.Grating), ...
    'constants', struct(...
    'stimulus', 'grating', ... % stimulus name recorded in the session table
    'monitor_distance', 10, ...  (cm)
    'monitor_size', 7, ...       (inches) diagonal
    'monitor_aspect', 1.7, ...   (physical aspect ratio W/H)
    'resolution_x', 1024, ...     (pixels)
    'resolution_y',  600 ...      (pixels)
    ), ...
    'blocks', 4, ...
    'stim', {{
    
    setParams(stims.Grating, ...
    'second_photodiode', [-1,1], ...
    'pre_blank', 0.978, ...
    'trial_duration', 0.978, ...
    'direction', [90 180], ...
    'aperture_radius', 1.0, ...
    'temp_freq',[2 4 6 8 10],...
    'spatial_freq',[0.02 0.04 0.08 0.12 0.16])...
    }}...
    );


% menu items callback
menu = [
    simpleGrating
    electricalGrating
    quadrantGrating
    jakeGrating
    ];
>>>>>>> ea874b355df4d921937cd2ce249fcc1457d641ca

clc, disp 'Welcome to stims.pick'

% enter primary key
while true
    try
        for keyField = parentTable.primaryKey
            key.(keyField{1}) = input(sprintf('Enter %s: ', keyField{1}));
            assert(~isempty(key.(keyField{1})), 'cannot have empty key')
        end
        disp 'Entered:'
        disp(key)
        assert(count(parentTable & key)==1, 'not found in database')
        break
    catch err
        disp(err.message)
    end
end

assert(isempty(javachk('desktop')), 'no MATLAB desktop! Restart.')
fprintf '\nAt runtime, press numbers to select stimulus, "r"=run, "q"=quit:\n'
for i = 1:length(menu)
    fprintf('%d. %s\n', i, menu(i).prompt)
end
fprintf \n\n

disp 'While the screen is blanked you can:'
disp '   press 1-9 to select or change the stimulus (memorize them now)'
disp '   press "r" to run the selected stimulus'
disp '   press ESC to stop an ongoing stimulus (only while frames are flipping)'
disp '   press "q" to quit'
disp ' '
disp 'Now press any key when you are ready to blank the screen.'

pause
<<<<<<< HEAD
run(menu, key, monitorDistance)
end



%%%% run the execution loop %%%%%
function run(menu, key, monitorDistance)

% blank the screen and set default luminance
stims.core.Visual.screen.open;
stims.core.Visual.screen.setContrast(3, 0.5);

% wait for user input
ch = ' ';
stim = [];
while ch~='q'
    FlushEvents
    ch = GetChar;
    FlushEvents
    if ch=='q'
        break
    elseif ismember(ch, '1':char('0'+length(menu)))
        stim = menu{str2double(ch),2};
        rect = stims.core.Visual.screen.rect;
        if any([stim.constants.resolution_x stim.constants.resolution_y] ~= rect(3:4)) 
            disp 'Mismatching screen size'
            fprintf('Stimulus specifies [%d,%d]\n', stim.constants.resolution_x, stim.constants.resolution_y)
            fprintf('Screen resolution is [%d,%d]\n', rect(3), rect(4))
            break
        end
        stim.init(key, 'monitor_distance', monitorDistance)
        fprintf('Selected stimulus %c\n', ch);
    elseif ch=='r' && ~isempty(stim)
        stim.run
    end
end
stims.core.Visual.screen.close
disp 'To restart run stims.pick again'
=======
stims.core.run(menu, key)
>>>>>>> ea874b355df4d921937cd2ce249fcc1457d641ca
end